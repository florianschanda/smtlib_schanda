(set-logic QF_FPBV)
;;(set-option :produce-models true)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(define-const proof_delta Float64 ((_ to_fp 11 53) RNE 10.0))

(define-const frame_first (_ BitVec 32) (_ bv0     32))
(define-const frame_last  (_ BitVec 32) (_ bv25000 32))
(define-const frame_last_f Float64 ((_ to_fp 11 53) RNE frame_last))

(define-const frame_length Float64 ((_ to_fp 11 53) RNE (/ 1.0 100.0)))
(define-const g            Float64 ((_ to_fp 11 53) RNE 9.80665))  ;; wikipedia
(define-const g_times_fl   Float64 (fp.mul RNE frame_length g))

(define-const ratio_first Float64 ((_ to_fp 11 53) RNE (- 1.0)))
(define-const ratio_last Float64 ((_ to_fp 11 53) RNE 1.0))

(define-const delta_first Float64 ((_ to_fp 11 53) RNE (- 64.0)))
(define-const delta_last  Float64 ((_ to_fp 11 53) RNE 64.0))

(define-fun sq ((x Float64)) Float64 (fp.mul RNE x x))

;; n * n * delta'first - g * frame_length - proof_delta
(define-fun low_bound ((n (_ BitVec 32))) Float64
  (fp.sub RNE (fp.sub RNE (fp.mul RNE (sq ((_ to_fp 11 53) RNE n))
                                      delta_first)
                          g_times_fl)

              proof_delta))

;; n * n * delta'last + g * frame_length + proof_delta
(define-fun high_bound ((n (_ BitVec 32))) Float64
  (fp.add RNE (fp.add RNE (fp.mul RNE (sq ((_ to_fp 11 53) RNE n))
                                      delta_last)
                          g_times_fl)

              proof_delta))

;; speed in low_bound (n) .. high_bound (n)
(define-fun invariant ((n (_ BitVec 32)) (speed Float64)) Bool
  (and (fp.geq speed (low_bound n))
       (fp.leq speed (high_bound n))))

(define-fun finite ((x Float64)) Bool
  (or (fp.isZero x) (fp.isNormal x) (fp.isSubnormal x)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Parameters
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(declare-const n (_ BitVec 32))
(assert (bvsge n frame_first))
(assert (bvslt n frame_last))

(declare-const factor Float64)
(assert (fp.geq factor ratio_first))
(assert (fp.leq factor ratio_last))

(declare-const old_speed Float64)
(assert (finite old_speed))
(assert (invariant n old_speed))

(declare-const current_delta Float64)
(assert (fp.geq current_delta delta_first))
(assert (fp.leq current_delta delta_last))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Implementation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-const gravitational_pull Float64 (fp.mul RNE g factor))

(define-const speed_increment Float64
  (fp.sub RNE current_delta
              (fp.mul RNE gravitational_pull frame_length)))

(define-const new_speed Float64 (fp.add RNE old_speed speed_increment))

(assert (not (invariant (bvadd n (_ bv1 32))
                         new_speed)))

(check-sat)
;;(get-value (n factor current_delta old_speed new_speed))
;;(get-value ((low_bound n) (high_bound n)))
;;(get-value ((low_bound (bvadd n (_ bv1 32)))
;;            (high_bound (bvadd n (_ bv1 32)))))
(exit)
