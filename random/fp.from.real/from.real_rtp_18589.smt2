(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00001101 #b00101010101100011100100)))
;; x should be Float32(0x869558E4 [Rational(-2446905, 43556142965880123323311949751266331066368), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 11501160381.0 435561429658801233233119497512663310663680000.0)))))
;; w should be Float32(0x860C6520 [Rational(-287529, 10889035741470030830827987437816582766592), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
