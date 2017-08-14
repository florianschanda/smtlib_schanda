(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10111011 #b10111110010010001000000)))
;; x should be Float32(0xDDDF2440 [Rational(-2009880867295461376), -2009880867295461376.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 2009880867295461378.0))))
;; w should be Float32(0xDDDF2441 [Rational(-2009881004734414848), -2009881004734414848.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
