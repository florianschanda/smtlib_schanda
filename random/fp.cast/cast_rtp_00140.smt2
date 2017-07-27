(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00100100101000000110110)))
;; x should be Float32(0x00125036 [Rational(600091, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x37E2503600000000 [Rational(600091, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01101111110 #b0010010100000011011000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
