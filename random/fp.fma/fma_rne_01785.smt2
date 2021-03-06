(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007FFFFF)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80378C0F)))
;; y should be Float32(0x80378C0F [Rational(-3640335, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8007C385)))
;; z should be Float32(0x8007C385 [Rational(-508805, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b00000000 #b00001111100001110000101)))
(check-sat)
(exit)
