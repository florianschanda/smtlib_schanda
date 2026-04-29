(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b11101000 #b11001110001000100000110)))
;; x should be Float32(0x74671106 [Rational(73227896158067770152208088170496), 73227896158067770152208088170496.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0x4068CE220C0000000000000000000000 [Rational(73227896158067770152208088170496), 73227896158067770152208088170496.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000001101000 #b1100111000100010000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
