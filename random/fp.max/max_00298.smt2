(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00131E50)))
;; x should be Float32(0x00131E50 [Rational(78309, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b01000001 #b01101000101101010110110)))
;; y should be Float32(0xA0B45AB6 [Rational(-5909851, 19342813113834066795298816), -0.000000])

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (= result (fp #b0 #b00000000 #b00100110001111001010000)))
(check-sat)
(exit)
