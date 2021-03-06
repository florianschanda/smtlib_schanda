(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b10001000010010010111000)))
;; x should be Float32(0xC94424B8 [Rational(-1606807, 2), -803403.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xC0128849700000000000000000000000 [Rational(-1606807, 2), -803403.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010010 #b1000100001001001011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
