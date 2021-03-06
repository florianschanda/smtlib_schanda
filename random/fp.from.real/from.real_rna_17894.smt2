(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6CF6F901)))
;; x should be Float32(0x6CF6F901 [Rational(2388573114609419138763849728), 2388573114609419138763849728.000000])

(declare-const r Real)
(assert (and (>= r 2388573040822442843925643264.0) (< r 2388573188396395433602056192.0)))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA r)))
(assert (not (= x w)))
(check-sat)
(exit)
