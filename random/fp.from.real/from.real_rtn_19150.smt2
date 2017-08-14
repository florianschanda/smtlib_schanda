(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00001101010110011010000)))
;; x should be Float32(0x8006ACD0 [Rational(-27341, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 2734157.0 4460149039706124628307143654529672301196083200.0)))))
;; w should be Float32(0x8006ACDA [Rational(-218733, 356811923176489970264571492362373784095686656), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
