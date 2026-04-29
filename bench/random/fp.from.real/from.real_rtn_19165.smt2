(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80166AD6)))
;; x should be Float32(0x80166AD6 [Rational(-734571, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 1310517687689795562659757372145081192682667936439257.0 636573742604526901958889277627930675328583873020605078323793890423244156176042720682311680.0)))))
;; w should be Float32(0x80166AD6 [Rational(-734571, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= x w))
(check-sat)
(exit)
