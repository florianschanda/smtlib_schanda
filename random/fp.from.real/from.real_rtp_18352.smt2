(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00111001 #b10110000000100100100100)))
;; x should be Float32(0x1CD80924 [Rational(3539529, 2475880078570760549798248448), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 14409712129.0 99035203142830421991929937920000.0)))))
;; w should be Float32(0x9B2FE659 [Rational(-11527769, 79228162514264337593543950336), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
