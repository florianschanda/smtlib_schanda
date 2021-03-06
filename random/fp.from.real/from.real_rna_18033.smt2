(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b10111101010010110011000)))
;; x should be Float32(0xC95EA598 [Rational(-1823923, 2), -911961.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 23346213771.0 25600.0)))))
;; w should be Float32(0xC95EA598 [Rational(-1823923, 2), -911961.500000])

(assert (= x w))
(check-sat)
(exit)
