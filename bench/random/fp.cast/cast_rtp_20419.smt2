(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b01000011 #b10111000101100001010011)))
;; x should be Float32(0xA1DC5853 [Rational(-14440531, 9671406556917033397649408), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xBFC3B8B0A60000000000000000000000 [Rational(-14440531, 9671406556917033397649408), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111111000011 #b1011100010110000101001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
