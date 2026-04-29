(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00101110110101001001111)))
;; x should be Float32(0x00176A4F [Rational(1534543, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 30690873823.0 14272476927059598810582859694494951363827466240000.0))))
;; w should be Float32(0x00176A50 [Rational(95909, 44601490397061246283071436545296723011960832), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
