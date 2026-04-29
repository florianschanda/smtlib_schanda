(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b11011011 #b00011001101110001010001)))
;; x should be Float32(0x6D8CDC51 [Rational(5449280945873580060145876992), 5449280945873580060145876992.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(+oo)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x7C00)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
