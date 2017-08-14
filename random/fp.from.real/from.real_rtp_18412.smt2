(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11100100010111101100111)))
;; x should be Float32(0x00722F67 [Rational(7483239, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 1071754503.0 178405961588244985132285746181186892047843328000.0)))))
;; w should be Float32(0x80416A2A [Rational(-2143509, 356811923176489970264571492362373784095686656), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
