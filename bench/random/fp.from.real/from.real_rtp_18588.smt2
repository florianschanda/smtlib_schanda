(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x869558E4)))
;; x should be Float32(0x869558E4 [Rational(-2446905, 43556142965880123323311949751266331066368), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 24469054667.0 435561429658801233233119497512663310663680000.0)))))
;; w should be Float32(0x869558E5 [Rational(-9787621, 174224571863520493293247799005065324265472), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
