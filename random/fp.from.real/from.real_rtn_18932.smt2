(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00799A18)))
;; x should be Float32(0x00799A18 [Rational(996163, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 5838979651.0 892029807941224925661428730905934460239216640000.0)))))
;; w should be Float32(0x804746D0 [Rational(-291949, 44601490397061246283071436545296723011960832), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
