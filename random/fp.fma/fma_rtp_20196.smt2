(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11100100100011110011111)))
;; x should be Float32(0x8072479F [Rational(-7489439, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b01000111111100101000010)))
;; y should be Float32(0x8023F942 [Rational(-1178785, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8015BED1)))
;; z should be Float32(0x8015BED1 [Rational(-1425105, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x8015BED0)))
(check-sat)
(exit)
