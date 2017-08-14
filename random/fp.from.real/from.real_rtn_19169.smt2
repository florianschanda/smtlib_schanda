(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00101100110101011010110)))
;; x should be Float32(0x80166AD6 [Rational(-734571, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 11201479873.0 7136238463529799405291429847247475681913733120000.0)))))
;; w should be Float32(0x80111794 [Rational(-280037, 178405961588244985132285746181186892047843328), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
