package com.lap.lapcotizacion.dao;

import com.lap.lapcotizacion.entity.EmpresaUsuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

// collectionResourceRel = "empresaUsuario" name of the JSON entry
@RepositoryRestResource(collectionResourceRel = "empresaUsuario", path = "empresa-usuario")
public interface EmpresaUsuarioRepository extends JpaRepository<EmpresaUsuario, Long> {
}
