(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+subnormal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10001110111001010010110)))
;; x should be Float32(0x00477296 [Rational(2341195, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0x0001 [Rational(1, 16777216), 0.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x0001)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
