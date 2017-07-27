(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0076EB47)))
;; x should be Float32(0x0076EB47 [Rational(7793479, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 139040313863482742813694477504760962385084084270415349.0 12731474852090538039177785552558613506571677460412101566475877808464883123520854413646233600.0))))
;; w should be Float32(0x0076EB47 [Rational(7793479, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
