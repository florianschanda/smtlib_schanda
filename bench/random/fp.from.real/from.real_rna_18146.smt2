(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF18ECD8C)))
;; x should be Float32(0xF18ECD8C [Rational(-1414251594206707215682034991104), -1414251594206707215682034991104.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- 1414251669764570941596358410241.0))))
;; w should be Float32(0xF18ECD8D [Rational(-1414251745322434667510681829376), -1414251745322434667510681829376.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
