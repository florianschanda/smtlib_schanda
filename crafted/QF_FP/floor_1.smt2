(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(define-fun isFinite ((x Float32)) Bool (or (fp.isNormal x)
                                            (fp.isSubnormal x)
                                            (fp.isZero x)))

(declare-const x Float32)
(assert (isFinite x))

(define-const f Float32 (fp.roundToIntegral RTN x))

(define-const tmp Float32 (fp.add RNE f ((_ to_fp 8 24) RNE 1.0)))
;;  this is finite

(assert (not (fp.gt tmp x)))
(check-sat)
(exit)
