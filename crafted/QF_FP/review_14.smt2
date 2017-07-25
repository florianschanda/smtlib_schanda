(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const a Float32)
(declare-const b Float32)
(declare-const c Float32)

(define-const ainc Float32
  (fp.add RNE a (fp #b0 #b00000000 #b00000000000000000000001)))
(define-const b2 Float32 (fp.mul RNE b b))
(define-const c2 Float32 (fp.mul RNE c c))

(assert (fp.eq a b2))
(assert (fp.eq ainc c2))

(assert (not (fp.isSubnormal a)))
(check-sat)
(exit)
