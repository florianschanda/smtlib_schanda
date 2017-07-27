(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x805E0ACA)))
;; x should be Float32(0x805E0ACA [Rational(-3081573, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 2651336073.0 892029807941224925661428730905934460239216640000.0)))))
;; w should be Float32(0x80205D6C [Rational(-530267, 178405961588244985132285746181186892047843328), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
