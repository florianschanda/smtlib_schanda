(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

;; very surprising slow performance on cvc4 fp RC1, so keeping this just in
;; case

(define-const position_t__first Float32 ((_ to_fp 8 24) RNE (- 4096.0)))
(define-const position_t__last  Float32 ((_ to_fp 8 24) RNE 4096.0))

(define-const big_position_t__first Float64 ((_ to_fp 11 53) RNE (- 8192.0)))
(define-const big_position_t__last  Float64 ((_ to_fp 11 53) RNE 8192.0))

(define-fun in_range_position_t ((x Float32)) Bool
  (and (fp.leq position_t__first x)
       (fp.leq x position_t__last)))

(declare-const origin_x Float32)
(declare-const origin_y Float32)
(declare-const offset_x Float32)
(declare-const offset_y Float32)
(assert (in_range_position_t origin_x))
(assert (in_range_position_t origin_y))
(assert (in_range_position_t offset_x))
(assert (in_range_position_t offset_y))

(check-sat)
(get-value (origin_x origin_y))
(get-value (offset_x offset_y))
(exit)
