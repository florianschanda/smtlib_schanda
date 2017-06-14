(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda and Martin Brain|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun is_finite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isZero f)
      (fp.isSubnormal f)))

(define-const f0 Float32 ((_ to_fp 8 24) #x00000000)) ; +0

(declare-const a Float32)
(assert (is_finite a))

; In SPARK this makes sense
(assert (not (fp.eq (fp.add RNE a (fp.neg a))
                    f0)))
(check-sat)
(exit)
