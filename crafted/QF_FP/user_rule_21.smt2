(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unknown)

(define-fun fp.isFinite32 ((x Float32)) Bool
  (not (or (fp.isInfinite x) (fp.isNaN x))))

(define-fun fp.isFinite64 ((x Float64)) Bool
  (not (or (fp.isInfinite x) (fp.isNaN x))))

(define-const f0 Float32 (_ +zero 8 24))
(define-const d0 Float64 (_ +zero 11 53))

(define-const f5800 Float32 ((_ to_fp 8 24) RNE 5800.0))
(define-const d5800 Float64 ((_ to_fp 11 53) RNE 5800.0))

(declare-const num Float64)
(assert (fp.isFinite64 num))

(declare-const den Float64)
(assert (fp.isFinite64 den))

(assert (or (and (fp.gt den d0)
                 (fp.leq (fp.mul RNE (fp.neg d5800) den)
                         num
                         (fp.mul RNE d5800 den)))
            (and (fp.lt den d0)
                 (fp.leq (fp.mul RNE d5800 den)
                         num
                         (fp.mul RNE (fp.neg d5800) den)))))

(define-const tmp1 Float64 (fp.div RNE num den))
(define-const tmp2 Float32 ((_ to_fp 8 24) RNE tmp1))

(assert (not (fp.leq (fp.neg f5800) tmp2 f5800)))

(check-sat)
(exit)
