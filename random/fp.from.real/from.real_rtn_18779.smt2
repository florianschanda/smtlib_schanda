(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F7FFFFF)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 290724250836393256574431600165318182769.0)))
;; w should be Float32(0x7F5AB774 [Rational(290724246165737557342820197850511572992), 290724246165737557342820197850511572992.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
