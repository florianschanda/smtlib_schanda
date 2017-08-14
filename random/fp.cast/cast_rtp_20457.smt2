(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01000000010010101000010)))
;; x should be Float32(0x80202542 [Rational(-1053345, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xB7F012A100000000 [Rational(-1053345, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xB7F012A100000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
