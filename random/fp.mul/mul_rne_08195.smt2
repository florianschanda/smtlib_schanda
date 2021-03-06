(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC98C9C54)))
;; x should be Float32(0xC98C9C54 [Rational(-2303765, 2), -1151882.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA69FC6E)))
;; y should be Float32(0xCA69FC6E [Rational(-7667255, 2), -3833627.500000])

(declare-const result Float32)
(assert (= result (fp.mul RNE x y)))
(assert (not (= result (fp #b0 #b10101001 #b00000001000010011101111))))
(check-sat)
(exit)
