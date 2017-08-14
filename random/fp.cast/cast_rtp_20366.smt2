(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-halfpoint) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10111111110011111110010)))
;; x should be Float32(0xCA5FE7F2 [Rational(-7336953, 2), -3668476.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0xFBFF [Rational(-65504), -65504.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #xFBFF)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
