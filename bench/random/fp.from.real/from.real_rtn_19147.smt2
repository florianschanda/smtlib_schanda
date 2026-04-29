(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8006ACD0)))
;; x should be Float32(0x8006ACD0 [Rational(-27341, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 487779321047824044331161367359006110028683973046577.0 795717178255658627448611597034913344160729841275756347904742363029055195220053400852889600.0)))))
;; w should be Float32(0x8006ACD0 [Rational(-27341, 44601490397061246283071436545296723011960832), -0.000000])

(assert (= x w))
(check-sat)
(exit)
