(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00011110111100001100110)))
;; x should be Float32(0xCA0F7866 [Rational(-4701235, 2), -2350617.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC141EF0CC0000000 [Rational(-4701235, 2), -2350617.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010100 #b0001111011110000110011000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
