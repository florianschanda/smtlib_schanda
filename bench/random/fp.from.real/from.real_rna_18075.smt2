(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 37773114557.0 14272476927059598810582859694494951363827466240000.0)))))
;; w should be Float32(0x801CD190 [Rational(-118041, 44601490397061246283071436545296723011960832), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
