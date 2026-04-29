(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const a Float32)
(declare-const b Float32)

(define-const a2 Float32 (fp.mul RNE a a))
(define-const b2 Float32 (fp.mul RNE b b))

(assert (distinct a b))
(assert (fp.gt a (_ +zero 8 24)))
(assert (fp.gt b (_ +zero 8 24)))
(assert (fp.eq a2 b2))

(assert (not (fp.isSubnormal a2)))
(check-sat)
(exit)
