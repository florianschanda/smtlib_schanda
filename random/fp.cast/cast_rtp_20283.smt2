(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x64971EE3)))
;; x should be Float32(0x64971EE3 [Rational(22301471822167947608064), 22301471822167947608064.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x4492E3DC60000000 [Rational(22301471822167947608064), 22301471822167947608064.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10001001001 #b0010111000111101110001100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
