(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b11011001 #b11101101111100100000001)))
;; x should be Float32(0x6CF6F901 [Rational(2388573114609419138763849728), 2388573114609419138763849728.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA 689693203670990476586912839.0)))
;; w should be Float32(0x6C0EA00E [Rational(689693213107814071904763904), 689693213107814071904763904.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
