(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000101111101010101111)))
;; x should be Float32(0x0002FAAF [Rational(195247, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x97744CBF)))
;; y should be Float32(0x97744CBF [Rational(-16010431, 20282409603651670423947251286016), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (= result ((_ to_fp 8 24) #x17744CBF)))
(check-sat)
(exit)
