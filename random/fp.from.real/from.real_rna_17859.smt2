(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00010100 #b10100111101001100011001)))
;; x should be Float32(0x0A53D319 [Rational(13882137, 1361129467683753853853498429727072845824), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 377907724958898741620048649965361964538848098827.0 37053468555941182535542715202780130513046395093004980492626426882532201484779520.0))))
;; w should be Float32(0x0A53D319 [Rational(13882137, 1361129467683753853853498429727072845824), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
