(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b11011001 #b11101101111100100000001)))
;; x should be Float32(0x6CF6F901 [Rational(2388573114609419138763849728), 2388573114609419138763849728.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 11942865523956114434528799551.0 5.0))))
;; w should be Float32(0x6CF6F901 [Rational(2388573114609419138763849728), 2388573114609419138763849728.000000])

(assert (not (= x w)))
(check-sat)
(exit)
