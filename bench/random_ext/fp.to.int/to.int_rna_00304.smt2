(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00001111 #b11110001001010001110010)))
;; x should be Float32(0x07F89472 [Rational(8145465, 21778071482940061661655974875633165533184), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (not (= y z)))
