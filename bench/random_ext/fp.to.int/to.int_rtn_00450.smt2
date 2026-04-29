(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTN -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x89FC9C34)))
;; x should be Float32(0x89FC9C34 [Rational(-4138765, 680564733841876926926749214863536422912), -0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -1

(declare-const z Int)
(assert (= z (- 1)))
(assert (not (= y z)))
