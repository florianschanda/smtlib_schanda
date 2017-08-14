(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01000011100110001110000)))
;; x should be Float32(0x0021CC70 [Rational(138439, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x37F0E63800000000 [Rational(138439, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01101111111 #b0000111001100011100000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
