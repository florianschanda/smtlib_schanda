(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun finite ((x Float64)) Bool
  (or (fp.isZero x) (fp.isNormal x) (fp.isSubnormal x)))

(define-const frame_first (_ BitVec 32) (_ bv0     32))
(define-const frame_last  (_ BitVec 32) (_ bv25000 32))
(define-const frame_last_f Float64 ((_ to_fp 11 53) RNE frame_last))

(define-const frame_length Float64 ((_ to_fp 11 53) RNE (/ 1.0 100.0)))
(define-const g            Float64 ((_ to_fp 11 53) RNE 9.80665))  ;; wikipedia
(define-const g_times_fl   Float64 (fp.mul RNE frame_length g))
(define-const fudge        Float64 (fp.roundToIntegral RTP g_times_fl))

(define-const ratio_first Float64 ((_ to_fp 11 53) RNE (- 1.0)))
(define-const ratio_last Float64 ((_ to_fp 11 53) RNE 1.0))

(define-const delta_first Float64 ((_ to_fp 11 53) RNE (- 64.0)))
(define-const delta_last  Float64 ((_ to_fp 11 53) RNE 64.0))

(define-fun sq ((x Float64)) Float64 (fp.mul RNE x x))

;; n * (delta'first - ceil(g * fl))
(define-fun speed_low_bound ((n (_ BitVec 32))) Float64
  (fp.mul RNE ((_ to_fp 11 53) RNE n)
              (fp.sub RNE delta_first fudge)))

;; n * (delta'last + ceil(g * fl))
(define-fun speed_high_bound ((n (_ BitVec 32))) Float64
  (fp.mul RNE ((_ to_fp 11 53) RNE n)
              (fp.add RNE delta_last fudge)))

;; [n * (n + 1) * (speed_high_bound 1)] / 2
(define-fun dist_high_bound ((n (_ BitVec 32))) Float64
  (fp.div RNE (fp.mul RNE (fp.mul RNE ((_ to_fp 11 53) RNE n)
                                      ((_ to_fp 11 53) RNE (bvadd n (_ bv1 32))))
                          (speed_high_bound (_ bv1 32)))
              ((_ to_fp 11 53) RNE 2.0)))

(define-fun dist_low_bound ((n (_ BitVec 32))) Float64
  (fp.div RNE (fp.mul RNE (fp.mul RNE ((_ to_fp 11 53) RNE n)
                                      ((_ to_fp 11 53) RNE (bvadd n (_ bv1 32))))
                          (speed_low_bound (_ bv1 32)))
              ((_ to_fp 11 53) RNE 2.0)))

(define-fun invariant ((n (_ BitVec 32))
                       (speed Float64)
                       (dist Float64))
                      Bool
  (and (fp.geq speed (speed_low_bound n))
       (fp.leq speed (speed_high_bound n))
       (fp.geq dist (dist_low_bound n))
       (fp.leq dist (dist_high_bound n))
       ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Parameters
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(declare-const n (_ BitVec 32))
(assert (bvsge n frame_first))
(assert (bvslt n frame_last))
;;(assert (= n (_ bv9257 32)))

(declare-const factor Float64)
(assert (fp.geq factor ratio_first))
(assert (fp.leq factor ratio_last))

(declare-const old_speed Float64)
(assert (finite old_speed))

(declare-const current_delta Float64)
(assert (fp.geq current_delta delta_first))
(assert (fp.leq current_delta delta_last))

(declare-const old_distance Float64)
(assert (finite old_distance))

;; Precondition
(assert (invariant n old_speed old_distance))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Implementation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; speed_increment := delta - factor * g * frame_length
(define-const speed_increment Float64
  (fp.sub RNE current_delta
              (fp.mul RNE factor g_times_fl)))

;; new_speed := old_speed + speed_increment
(define-const new_speed Float64 (fp.add RNE old_speed speed_increment))

;; avg_speed := (old_speed + new_speed) / 2.0
(define-const avg_speed Float64 (fp.div RNE (fp.add RNE old_speed new_speed)
                                        ((_ to_fp 11 53) RNE 2.0)))

;; distance := old_dist + avg * fl
(define-const new_distance Float64
  (fp.add RNE old_distance (fp.mul RNE avg_speed frame_length)))

(assert (not (invariant (bvadd n (_ bv1 32))
                        new_speed
                        new_distance)))
(check-sat)
(exit)
