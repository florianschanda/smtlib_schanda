(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Reviewing of SPARK code by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ranges

(define-fun in_range_90 ((x Float64)) Bool
  (and (fp.geq x ((_ to_fp 11 53) RNE (- 90.0)))
       (fp.leq x ((_ to_fp 11 53) RNE 90.0))))

(define-fun in_range_tan_result ((x Float32)) Bool
  (and (fp.geq x ((_ to_fp 8 24) RNE (- 5800.0)))
       (fp.leq x ((_ to_fp 8 24) RNE 5800.0))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; inputs

(declare-const t Float32)
(assert (in_range_tan_result t))

(declare-const e Float32)
(assert (and (fp.geq e ((_ to_fp 8 24) RNE 0.01))
             (fp.leq e ((_ to_fp 8 24) RNE 0.10))))

(declare-const k Float32)
(assert (and (fp.geq k ((_ to_fp 8 24) RNE 0.001))
             (fp.leq k ((_ to_fp 8 24) RNE 0.010))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; constants

(define-const radians_to_degrees Float64
  ((_ to_fp 11 53) RNE (/ 180.0 3.1415926535897932386)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; VC

(define-const e_squared Float32 (fp.mul RNE e e))

(define-const a_squared Float32
  (fp.add RNE ((_ to_fp 8 24) RNE 1.0)
              (fp.mul RNE (fp.sub RNE ((_ to_fp 8 24) RNE 1.0)
                                      e_squared)
                          (fp.mul RNE t
                                      t))))
(define-const a Float32
  (fp.sqrt RNE a_squared))

(define-const num Float64
  (fp.sub RNE ((_ to_fp 11 53) RNE (fp.mul RNE e_squared t))
              (fp.mul RNE ((_ to_fp 11 53) RNE k)
                          ((_ to_fp 11 53) RNE a))))

(define-const denom Float64
  (fp.add RNE ((_ to_fp 11 53) RNE a_squared)
              (fp.mul RNE ((_ to_fp 11 53) RNE k)
                          ((_ to_fp 11 53) RNE (fp.mul RNE a t)))))

(define-const num_2 Float64
  (fp.mul RNE num radians_to_degrees))

(define-const result Float64 (fp.div RNE num_2 denom))

(assert (not (in_range_90 result)))
(check-sat)
(exit)
