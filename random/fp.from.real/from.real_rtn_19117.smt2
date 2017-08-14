(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8013BB6E)))
;; x should be Float32(0x8013BB6E [Rational(-646583, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 360481977068947224757434957985352427339454300705073.0 198929294563914656862152899258728336040182460318939086976185590757263798805013350213222400.0)))))
;; w should be Float32(0x8013BB6E [Rational(-646583, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= x w))
(check-sat)
(exit)
