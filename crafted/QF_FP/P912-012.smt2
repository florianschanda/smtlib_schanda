(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)

(assert (or (fp.isZero x)
            (fp.isNormal x)
            (fp.isSubnormal x)))

(assert (or (fp.isZero y)
            (fp.isNormal y)
            (fp.isSubnormal y)))

(assert (fp.eq (_ +zero 8 24)
               (fp.sub RNE x y)))

(assert (not (fp.eq x y)))
(check-sat)
(exit)
