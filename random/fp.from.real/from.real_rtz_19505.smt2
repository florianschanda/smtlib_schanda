(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 17840598053853220636121661832976943653271905703.0 1517710072051350836655829614705874145814380343009484000977978445108518972816569139200.0)))))
;; w should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(assert (= x w))
(check-sat)
(exit)
