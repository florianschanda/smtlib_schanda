(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x801C2675)))
;; x should be Float32(0x801C2675 [Rational(-1844853, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 32913279120779319146474078556874145060315849100329537.0 12731474852090538039177785552558613506571677460412101566475877808464883123520854413646233600.0)))))
;; w should be Float32(0x801C2675 [Rational(-1844853, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
