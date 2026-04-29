(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6D8CDC51)))
;; x should be Float32(0x6D8CDC51 [Rational(5449280945873580060145876992), 5449280945873580060145876992.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x45B19B8A20000000 [Rational(5449280945873580060145876992), 5449280945873580060145876992.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x45B19B8A20000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
