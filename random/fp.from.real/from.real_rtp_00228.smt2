(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 2648877432796546089961145285782532954.0))))
;; w should be Float32(0xFBFF13DE [Rational(-2648877306721857187392554656965066752), -2648877306721857187392554656965066752.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
