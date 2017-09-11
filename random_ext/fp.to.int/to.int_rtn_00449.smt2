(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC51EF703)))
;; x should be Float32(0xC51EF703 [Rational(-10417923, 4096), -2543.438232])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -2544

(declare-const z Int)
(assert (= z (- 2544)))
(assert (= y z))
