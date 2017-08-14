(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11111111011111111001010)))
;; x should be Float32(0xCA7FBFCA [Rational(-8380389, 2), -4190194.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC14FF7F940000000 [Rational(-8380389, 2), -4190194.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC14FF7F940000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
