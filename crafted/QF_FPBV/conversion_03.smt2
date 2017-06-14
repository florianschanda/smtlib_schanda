(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(define-const frame_first (_ BitVec 32) (_ bv0     32))
(define-const frame_last  (_ BitVec 32) (_ bv25000 32))

(define-const frame_last_f Float64 ((_ to_fp 11 53) RNE frame_last))

(define-const frame_length Float64 ((_ to_fp 11 53) RNE (/ 1.0 60.0)))
(define-const g            Float64 ((_ to_fp 11 53) RNE 3.711))

(define-const min_range_first Float64
  (fp.mul RNE (fp.mul RNE frame_last_f (fp.neg g))
              frame_length))
(define-const min_range_last Float64 (_ -zero 11 53))

(define-const max_range_first Float64 (_ +zero 11 53))
(define-const max_range_last Float64
  (fp.mul RNE (fp.mul RNE frame_last_f g)
              frame_length))

(define-const ratio_first Float64 ((_ to_fp 11 53) RNE (- 1.0)))
(define-const ratio_last Float64 ((_ to_fp 11 53) RNE 1.0))

(define-fun low_bound ((n (_ BitVec 32))) Float64
  (fp.mul RNE (fp.mul RNE ((_ to_fp 11 53) RNE n) (fp.neg g)) frame_length))

(define-fun high_bound ((n (_ BitVec 32))) Float64
  (fp.mul RNE (fp.mul RNE ((_ to_fp 11 53) RNE n) g) frame_length))

(define-fun invariant ((n (_ BitVec 32)) (speed Float64)) Bool
  (and (fp.geq speed (low_bound n))
       (fp.leq speed (high_bound n))))

(define-fun finite ((x Float64)) Bool
  (or (fp.isZero x) (fp.isNormal x) (fp.isSubnormal x)))

(declare-const n (_ BitVec 32))
(assert (bvsge n frame_first))
(assert (bvslt n frame_last))

(declare-const factor Float64)
(assert (fp.geq factor ratio_first))
(assert (fp.leq factor ratio_last))

(declare-const old_speed Float64)
(assert (finite old_speed))
(assert (invariant n old_speed))

(define-const new_speed Float64
  (fp.add RNE old_speed
              (fp.mul RNE (fp.mul RNE factor g) frame_length)))
(assert (not (invariant (bvadd n (_ bv1 32))
                        new_speed)))

(check-sat)
(exit)
