(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01010111011111001100100)))
;; x should be Float32(0x802BBE64 [Rational(-716697, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 799143647230428150032218214145181718870927288295851.0 198929294563914656862152899258728336040182460318939086976185590757263798805013350213222400.0)))))
;; w should be Float32(0x802BBE64 [Rational(-716697, 178405961588244985132285746181186892047843328), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
