(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11100000 #b11010101100111000000011)))
;; x should be Float32(0x706ACE03 [Rational(290674180736539233202095521792), 290674180736539233202095521792.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x2654BE2C)))
;; y should be Float32(0x2654BE2C [Rational(3485579, 4722366482869645213696), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00011100 #b01011100011100100001000)))
;; z should be Float32(0x0E2E3908 [Rational(1427233, 664613997892457936451903530140172288), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x57432108))))
(check-sat)
(exit)
