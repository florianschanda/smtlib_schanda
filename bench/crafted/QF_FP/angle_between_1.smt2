(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat) ;; OK, at least I think it is

(define-const valid_input__first Float32 ((_ to_fp 8 24) RNE (- 4096.0)))
(define-const valid_input__last  Float32 ((_ to_fp 8 24) RNE    4096.0))
(define-fun in_valid_input_range ((f Float32)) Bool
  (and (fp.geq f valid_input__first)
       (fp.leq f valid_input__last)))

; note the ranges are slightly defensive, the actual range we want is -1 .. 1
(define-const valid_result__first Float32 ((_ to_fp 8 24) RNE (- 1.000001)))
(define-const valid_result__last  Float32 ((_ to_fp 8 24) RNE    1.000001))
(define-fun in_valid_result_range ((f Float32)) Bool
  (and (fp.geq f valid_result__first)
       (fp.leq f valid_result__last)))

; input are three points in 2-space
(declare-const pt_a_x Float32)
(declare-const pt_a_y Float32)
(declare-const pt_b_x Float32)
(declare-const pt_b_y Float32)
(declare-const pt_c_x Float32)
(declare-const pt_c_y Float32)

(assert (in_valid_input_range pt_a_x))
(assert (in_valid_input_range pt_a_y))
(assert (in_valid_input_range pt_b_x))
(assert (in_valid_input_range pt_b_y))
(assert (in_valid_input_range pt_c_x))
(assert (in_valid_input_range pt_c_y))

; work out two vectors
(define-const vec_ba_x Float32 (fp.sub RNE pt_a_x pt_b_x))
(define-const vec_ba_y Float32 (fp.sub RNE pt_a_y pt_b_y))
(define-const vec_bc_x Float32 (fp.sub RNE pt_c_x pt_b_x))
(define-const vec_bc_y Float32 (fp.sub RNE pt_c_y pt_b_y))

; dot product
(define-const ba_dot_bc Float32
  (fp.add RNE (fp.mul RNE vec_ba_x vec_bc_x)
              (fp.mul RNE vec_ba_y vec_bc_y)))

; lengths
(define-const sqrt_arg_1 Float32
  (fp.add RNE (fp.mul RNE (fp.sub RNE pt_b_x pt_a_x)
                          (fp.sub RNE pt_b_x pt_a_x))
              (fp.mul RNE (fp.sub RNE pt_b_y pt_a_y)
                          (fp.sub RNE pt_b_y pt_a_y))))
(define-const length_ba Float32 (fp.sqrt RNE sqrt_arg_1))

(define-const sqrt_arg_2 Float32
  (fp.add RNE (fp.mul RNE (fp.sub RNE pt_b_x pt_c_x)
                          (fp.sub RNE pt_b_x pt_c_x))
              (fp.mul RNE (fp.sub RNE pt_b_y pt_c_y)
                          (fp.sub RNE pt_b_y pt_c_y))))
(define-const length_bc Float32 (fp.sqrt RNE sqrt_arg_2))

; some defensive coding
(define-const small Float32 ((_ to_fp 8 24) RNE 0.001))
(assert (fp.lt small length_ba))
(assert (fp.lt small length_bc))

; work out the result
(define-const arg Float32
  (fp.div RNE ba_dot_bc (fp.mul RNE length_ba length_bc)))

; check it fits in the valid range
(assert (not (in_valid_result_range arg)))

(check-sat)
(exit)
