(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807CE030)))
;; x should be Float32(0x807CE030 [Rational(-511491, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 2281326107783742754658433680060449034566279215176789.0 198929294563914656862152899258728336040182460318939086976185590757263798805013350213222400.0)))))
;; w should be Float32(0x807CE030 [Rational(-511491, 44601490397061246283071436545296723011960832), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
