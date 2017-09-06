(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b11000000 #b11100010001101010010100)))
;; x should be Float32(0xE0711A94 [Rational(-69493444961024081920), -69493444961024081920.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -69493444961024081920

(declare-const z Int)
(assert (= z (- 69493444961024081920)))
(assert (= y z))
